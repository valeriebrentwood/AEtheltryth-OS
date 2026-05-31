FROM ghcr.io/ublue-os/kinoite-main:latest
COPY system_files/ /
# This ensures the flatpaks are defined as part of the image build
RUN echo "com.valvesoftware.Steam" >> /usr/etc/flatpak_remotes.d/flatpak.list
RUN echo "org.lutris.Lutris" >> /usr/etc/flatpak_remotes.d/flatpak.list
RUN echo "com.usebottles.bottles" >> /usr/etc/flatpak_remotes.d/flatpak.list
