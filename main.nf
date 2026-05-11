#!/usr/bin/env nextflow

process nextflowStep {
    script:
    """
    echo "::set-counter name=nextflow:: 42"
    echo "::set-counter name=this.has.dots:: 1337"

    echo "::submit-counter name=nextflow::"
    echo "::submit-counter name=this.has.dots::"

    echo "::set-and-submit-value name=hey-hi:: hello there"
    echo "::set-and-submit-value name=bye.bye:: Good night"
    """
}

workflow {
    nextflowStep()
}
