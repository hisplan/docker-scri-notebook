version 1.0

workflow ScriNotebook {

    input {
        File countMatrix
    }

    call Preprocess {
        input:
            countMatrix = countMatrix
    }

    call QC {
        input:
            adata = Preprocess.outAdata
    }

    output {
        File outAdata = Preprocess.outAdata
        File outPdf = QC.outPdf
    }
}

task Preprocess {

    input {
        File countMatrix
    }

    command <<<
        set -euo pipefail

        echo "======================================== BEFORE"
        tree

        mkdir ./data
        tar xvzf ~{countMatrix} -C data

        papermill /opt/preprocess.ipynb auto-generated.ipynb \
            -p path_matrix ./data

        echo "======================================== AFTER"
        tree
    >>>

    output {
        File outAdata = "preprocessed.h5ad"
    }

    runtime {
        docker: "hisplan/scri-notebook:0.0.1"
        disks: "local-disk 10 HDD"
        cpu: 1
        memory: "4 GB"
    }

}

task QC {

    input {
        File adata
    }

    command <<<
        set -euo pipefail

        papermill /opt/QC.ipynb auto-generated.ipynb \
            -p path_h5ad ~{adata}

        tree
    >>>

    output {
        File outPdf = "figures/highest_expr_genes.pdf"
    }

    runtime {
        docker: "hisplan/scri-notebook:0.0.1"
        disks: "local-disk 10 HDD"
        cpu: 1
        memory: "4 GB"
    }

}
