#!/usr/bin/env nextflow

process nextflowStep {
    script:
    """
    echo ::set-counter name=meaning:: 42
    echo ::set-counter name=this.has.dots:: 1337
    echo ::set-counter name=random:: \$(python3 -c "import os, random; random.seed(os.urandom(128)); print(int(10 + 2 ** (5 * random.random())))")

    echo ::submit-counter name=meaning::
    echo ::submit-counter name=this.has.dots::
    echo ::submit-counter name=random::

    echo ::set-value name=nextflow:: \$(nextflow -version)
    echo ::submit-value name=nextflow::

    echo ::set-value-and-submit name=hey-hi:: hello there
    echo ::set-value-and-submit name=bye.bye:: \$(python3 -c "import os, random; random.seed(os.urandom(128)); print(random.choice(['goodbye', 'adieu']))")
    """
}

workflow {
    nextflowStep()
}
