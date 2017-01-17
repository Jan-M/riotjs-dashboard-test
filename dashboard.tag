<dashboard>
    <alert-list alerts={ opts.alerts }></alert-list>
    <alert-details alert={ opts.selected }></alert-details>
</dashboard>

<alert-list>
    <ol>
        <li each={ opts.alerts } onClick={selectAlert}>
            { name }
        </li>
    </ol>
    <script>
    selectAlert(e) {
        this.parent.opts.selected = { "alert": e.item }
        this.parent.update()
    }
    </script>
</alert-list>

<alert-details>    
    <div if={opts.alert}>
        <h2>Alert: { opts.alert.alert.name }</h2>
    </div>
    <script>
    </script>
</alert-details>