function cutscene_create(argument0) //cutscene_create
{
    global.cutsceneManager = instance_create(0, 0, obj_cutsceneManager)
    with (global.cutsceneManager)
    {
        Event = argument0[0]
        for (var i = 1; i < array_length(argument0); i++)
            ds_queue_enqueue(Cutscene, argument0[i])
    }
}

function cutscene_event_end() //cutscene_event_end
{
    if (!ds_queue_empty(Cutscene))
        Event = ds_queue_dequeue(Cutscene)
    else
        instance_destroy()
}

function cutscene_declare_actor(argument0, argument1) //cutscene_declare_actor
{
    with (global.cutsceneManager)
    {
        if ds_exists(ActorMap, 1)
            ds_map_set(ActorMap, argument1, argument0)
    }
    return true;
}

function cutscene_get_actor(argument0) //cutscene_get_actor
{
    return ds_map_find_value(ActorMap, argument0);
}

