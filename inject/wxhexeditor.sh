#!/usr/bin/env bash

sed -i 's/Categories=Utility;TextEditor;/Categories=GTK;Development;/' /tmp/wxhexeditor/wxhexeditor-0.11/resources/wxHexEditor.desktop
sed -i 's/Exec=wxHexEditor/Exec=wxHexEditor %f/' /tmp/wxhexeditor/wxhexeditor-0.11/resources/wxHexEditor.desktop
sed -i 's/Build-Depends:/Build-Depends: autoconf,/' /tmp/wxhexeditor/wxhexeditor-0.11/debian/control
