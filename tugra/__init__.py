# Copyright 2026 KAYRA. All rights reserved.

__all__ = ["TugraI2V", "TugraS2V", "TugraT2V", "TugraTI2V", "TugraAnimate"]

def __getattr__(name):
    if name == "TugraI2V":
        from .image2video import WanI2V
        return WanI2V
    elif name == "TugraS2V":
        from .speech2video import WanS2V
        return WanS2V
    elif name == "TugraT2V":
        from .text2video import WanT2V
        return WanT2V
    elif name == "TugraTI2V":
        from .textimage2video import TugraTI2V
        return TugraTI2V
    elif name == "TugraAnimate":
        from .animate import WanAnimate
        return WanAnimate
    elif name == "configs":
        from . import configs
        return configs
    elif name == "distributed":
        from . import distributed
        return distributed
    elif name == "modules":
        from . import modules
        return modules
    raise AttributeError(f"module '{__name__}' has no attribute '{name}'")

