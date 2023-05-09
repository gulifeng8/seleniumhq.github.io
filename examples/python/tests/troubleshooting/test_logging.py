import logging

import pytest


@pytest.mark.skip(reason="Do not run in CI")
def test_basic_options():
    logger = logging.getLogger('selenium')

    logger.setLevel(logging.DEBUG)

    handler = logging.FileHandler("selenium.log")
    logger.addHandler(handler)

    logger.info("this is useful information")
    logger.warning("this is a warning")
    logger.debug("this is detailed debug information")
    assert False
