FROM waltplatform/pc-x86-64-test-suite:latest
ADD testfile /root
RUN echo OK > /root/test-result
RUN [ "$$" = "1" ]
RUN --on-node [ "$$" != "1" ]
