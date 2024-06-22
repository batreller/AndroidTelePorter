from dataclasses import dataclass, field
from typing import List


@dataclass
class Headers:
    version: int
    test_backend: bool
    client_blocked: bool | None = field(default_factory=lambda: None)  # added in 3 version
    last_init_system_langcode: str | None = field(default_factory=lambda: None)  # added in 4 version
    current_dc_id: int | None = field(default_factory=lambda: None)  # will be None in empty session
    time_difference: int | None = field(default_factory=lambda: None)  # will be None in empty session
    last_dc_update_time: int | None = field(default_factory=lambda: None)  # will be None in empty session
    push_session_id: int | None = field(default_factory=lambda: None)  # will be None in empty session
    registered_for_internal_push: bool | None = field(default_factory=lambda: None)  # added in 2 version
    last_server_time: int | None = field(default_factory=lambda: None)  # added in 5 version
    current_time: int | None = field(default_factory=lambda: None)  # added in 5 version
    sessions_to_destroy: List[int] = field(default_factory=lambda: [])
