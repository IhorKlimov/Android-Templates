package ${packageName};

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import ${packageName}.ItemFragment.OnListFragmentInteractionListener;
import ${packageName}.dummy.DummyContent.DummyItem;
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.${fragment_layout?replace('_', ' ')?capitalize?replace(' ','')}Binding;
</#if>
import android.databinding.DataBindingUtil;
import java.util.List;


/**
 * {@link RecyclerView.Adapter} that can display a {@link DummyItem} and makes a call to the
 * specified {@link OnListFragmentInteractionListener}.
 * TODO: Replace the implementation with code for your data type.
 */
public class ${adapterClassName} extends RecyclerView.Adapter<${adapterClassName}.ViewHolder> {

    private final List<DummyItem> mValues;
    private final OnListFragmentInteractionListener mListener;

    public ${adapterClassName}(List<DummyItem> items, OnListFragmentInteractionListener listener) {
        mValues = items;
        mListener = listener;
    }
    
    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        ${fragment_layout?replace('_', ' ')?capitalize?replace(' ','')}Binding binding = DataBindingUtil.inflate(LayoutInflater.from(parent.getContext()), R.layout.${fragment_layout}, parent, false);
        return new ViewHolder(binding.getRoot());
    }

    @Override
    public void onBindViewHolder(final ViewHolder holder, int position) {
        holder.binding.setItem(mValues.get(position));

        holder.binding.getRoot().setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (null != mListener) {
                    // Notify the active callbacks interface (the activity, if the
                    // fragment is attached to one) that an item has been selected.
                    mListener.onListFragmentInteraction(holder.binding.getItem());
                }
            }
        });
    }

    @Override
    public int getItemCount() {
        return mValues.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        ${fragment_layout?replace('_', ' ')?capitalize?replace(' ','')}Binding binding;

        public ViewHolder(View view) {
            super(view);
            binding = DataBindingUtil.bind(view);
        }

    }
}
