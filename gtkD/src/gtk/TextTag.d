/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkTextTag.html
 * outPack = gtk
 * outFile = TextTag
 * strct   = GtkTextTag
 * realStrct=
 * ctorStrct=
 * clss    = TextTag
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_tag_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_text_attributes_
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gdk.Event
 * 	- gtk.TextIter
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GdkEvent* -> Event
 * 	- GtkTextIter* -> TextIter
 * module aliases:
 * local aliases:
 */

module gtk.TextTag;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gobject.ObjectG;
private import gdk.Event;
private import gtk.TextIter;



/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 * Tags should be in the GtkTextTagTable for a given GtkTextBuffer
 * before using them with that buffer.
 * gtk_text_buffer_create_tag() is the best way to create tags.
 * See gtk-demo for numerous examples.
 * The "invisible" property was not implemented for GTK+ 2.0; it's
 * planned to be implemented in future releases.
 */
private import gobject.ObjectG;
public class TextTag : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextTag* gtkTextTag;
	
	
	public GtkTextTag* getTextTagStruct()
	{
		return gtkTextTag;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextTag;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextTag* gtkTextTag)
	{
		super(cast(GObject*)gtkTextTag);
		this.gtkTextTag = gtkTextTag;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	gboolean delegate(ObjectG, Event, TextIter, TextTag)[] onListeners;
	void addOn(gboolean delegate(ObjectG, Event, TextIter, TextTag) dlg)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static void callBack(GtkTextTag* texttagStruct, GObject* arg1, GdkEvent* event, GtkTextIter* arg2, TextTag textTag)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(ObjectG, Event, TextIter, TextTag) dlg ; textTag.onListeners )
		{
			dlg(new ObjectG(arg1), new Event(event), new TextIter(arg2), textTag);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Creates a GtkTextTag. Configure the tag using object arguments,
	 * i.e. using g_object_set().
	 * name:
	 *  tag name, or NULL
	 * Returns:
	 *  a new GtkTextTag
	 */
	public this (char[] name)
	{
		// GtkTextTag* gtk_text_tag_new (const gchar *name);
		this(cast(GtkTextTag*)gtk_text_tag_new(Str.toStringz(name)) );
	}
	
	/**
	 * Get the tag priority.
	 * tag:
	 *  a GtkTextTag
	 * Returns:
	 *  The tag's priority.
	 */
	public int getPriority()
	{
		// gint gtk_text_tag_get_priority (GtkTextTag *tag);
		return gtk_text_tag_get_priority(gtkTextTag);
	}
	
	/**
	 * Sets the priority of a GtkTextTag. Valid priorities are
	 * start at 0 and go to one less than gtk_text_tag_table_get_size().
	 * Each tag in a table has a unique priority; setting the priority
	 * of one tag shifts the priorities of all the other tags in the
	 * table to maintain a unique priority for each tag. Higher priority
	 * tags "win" if two tags both set the same text attribute. When adding
	 * a tag to a tag table, it will be assigned the highest priority in
	 * the table by default; so normally the precedence of a set of tags
	 * is the order in which they were added to the table, or created with
	 * gtk_text_buffer_create_tag(), which adds the tag to the buffer's table
	 * automatically.
	 * tag:
	 *  a GtkTextTag
	 * priority:
	 *  the new priority
	 */
	public void setPriority(int priority)
	{
		// void gtk_text_tag_set_priority (GtkTextTag *tag,  gint priority);
		gtk_text_tag_set_priority(gtkTextTag, priority);
	}
	
	/**
	 * Emits the "event" signal on the GtkTextTag.
	 * tag:
	 *  a GtkTextTag
	 * event_object:
	 *  object that received the event, such as a widget
	 * event:
	 *  the event
	 * iter:
	 *  location where the event was received
	 * Returns:
	 *  result of signal emission (whether the event was handled)
	 */
	public int event(ObjectG eventObject, Event event, TextIter iter)
	{
		// gboolean gtk_text_tag_event (GtkTextTag *tag,  GObject *event_object,  GdkEvent *event,  const GtkTextIter *iter);
		return gtk_text_tag_event(gtkTextTag, (eventObject is null) ? null : eventObject.getObjectGStruct(), (event is null) ? null : event.getEventStruct(), (iter is null) ? null : iter.getTextIterStruct());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}