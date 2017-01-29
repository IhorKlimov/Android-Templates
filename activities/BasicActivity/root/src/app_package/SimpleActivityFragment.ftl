package ${packageName};

import android.<#if appCompat>support.v4.</#if>app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding;
</#if>

import android.databinding.DataBindingUtil;

/**
 * A placeholder fragment containing a simple view.
 */
public class ${fragmentClass} extends Fragment {

    public ${fragmentClass}() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {

        ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding binding = 
            DataBindingUtil.inflate(LayoutInflater.from(getContext()), R.layout.${fragmentLayoutName}, container, false);
        return binding.getRoot();
    }
}
