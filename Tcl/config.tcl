# ==============================================================================
# MASTER CONFIG.TCL - MP_v3
# ==============================================================================

# --- Load Synthesis Configuration ---
source "$::env(DESIGN_DIR)/synthesis.tcl"

# --- Load Floorplan Configuration ---
source "$::env(DESIGN_DIR)/floorplan.tcl"

# --- Load PDN Configuration ---
source "$::env(DESIGN_DIR)/pdn.tcl"

# --- Load Placement Configuration
source "$::env(DESIGN_DIR)/placement.tcl"