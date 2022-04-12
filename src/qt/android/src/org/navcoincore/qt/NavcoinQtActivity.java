package org.navcoincore.qt;

import android.os.Bundle;
import android.system.ErrnoException;
import android.system.Os;

import org.qtproject.qt5.android.bindings.QtActivity;

import java.io.File;

public class NavcoinQtActivity extends QtActivity
{
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        final File navcoinDir = new File(getFilesDir().getAbsolutePath() + "/.navcoin");
        if (!navcoinDir.exists()) {
            navcoinDir.mkdir();
        }

        super.onCreate(savedInstanceState);
    }
}
