function(copy_dlls_for_debug _target _resource)
    add_custom_command(TARGET ${_target} POST_BUILD
        COMMAND ${CMAKE_COMMAND}
                -E copy_directory_if_different
                ${_resource}
                $<TARGET_FILE_DIR:${_target}>
    )
endfunction()