"""
This source file is part of an OSTIS project. For the latest info, see http://ostis.net
Distributed under the MIT License
(See accompanying file COPYING.MIT or copy at http://opensource.org/licenses/MIT)
"""

from sc_kpm import ScModule
from .ExampleAgent import ExampleAgent


class ExampleModule(ScModule):
    def __init__(self):
        super().__init__(ExampleAgent())
