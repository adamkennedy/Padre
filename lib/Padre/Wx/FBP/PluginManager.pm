package Padre::Wx::FBP::PluginManager;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008005;
use utf8;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();
use Wx::Html ();

our $VERSION = '0.93';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Plug-in Manager"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::DEFAULT_DIALOG_STYLE | Wx::RESIZE_BORDER,
	);
	$self->SetSizeHints( [ 750, 500 ], Wx::DefaultSize );

	$self->{list} = Wx::ListBox->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		[],
		Wx::LB_NEEDED_SB | Wx::LB_SINGLE,
	);

	Wx::Event::EVT_LISTBOX(
		$self,
		$self->{list},
		sub {
			shift->refresh_plugin(@_);
		},
	);

	$self->{details} = Wx::Panel->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::TAB_TRAVERSAL,
	);

	$self->{plugin_name} = Wx::StaticText->new(
		$self->{details},
		-1,
		'',
	);
	$self->{plugin_name}->SetFont(
		Wx::Font->new( Wx::NORMAL_FONT->GetPointSize, 70, 90, 92, 0, "" )
	);

	$self->{plugin_version} = Wx::StaticText->new(
		$self->{details},
		-1,
		'',
	);

	$self->{plugin_status} = Wx::StaticText->new(
		$self->{details},
		-1,
		'',
	);
	$self->{plugin_status}->SetFont(
		Wx::Font->new( Wx::NORMAL_FONT->GetPointSize, 70, 90, 92, 0, "" )
	);

	$self->{whtml} = Wx::HtmlWindow->new(
		$self->{details},
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	$self->{action} = Wx::Button->new(
		$self->{details},
		-1,
		Wx::gettext("Enable"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{action},
		sub {
			shift->action_clicked(@_);
		},
	);

	$self->{preferences} = Wx::Button->new(
		$self->{details},
		-1,
		Wx::gettext("Preferences"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{preferences},
		sub {
			shift->preferences_clicked(@_);
		},
	);

	$self->{cancel} = Wx::Button->new(
		$self->{details},
		-1,
		Wx::gettext("Close"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{cancel}->SetDefault;

	$self->{labels} = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$self->{labels}->Add( $self->{plugin_name}, 0, Wx::ALIGN_BOTTOM | Wx::ALL, 5 );
	$self->{labels}->Add( 5, 0, 0, Wx::EXPAND, 5 );
	$self->{labels}->Add( $self->{plugin_version}, 0, Wx::ALIGN_BOTTOM | Wx::BOTTOM | Wx::RIGHT, 6 );
	$self->{labels}->Add( 50, 0, 1, Wx::EXPAND, 5 );
	$self->{labels}->Add( $self->{plugin_status}, 0, Wx::ALIGN_BOTTOM | Wx::ALL, 5 );

	my $bSizer113 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer113->Add( $self->{action}, 0, Wx::ALL, 5 );
	$bSizer113->Add( $self->{preferences}, 0, Wx::BOTTOM | Wx::RIGHT | Wx::TOP, 5 );
	$bSizer113->Add( 50, 0, 1, Wx::EXPAND, 5 );
	$bSizer113->Add( $self->{cancel}, 0, Wx::ALL, 5 );

	my $bSizer110 = Wx::BoxSizer->new(Wx::VERTICAL);
	$bSizer110->Add( $self->{labels}, 0, Wx::EXPAND, 5 );
	$bSizer110->Add( $self->{whtml}, 1, Wx::EXPAND | Wx::LEFT | Wx::RIGHT, 5 );
	$bSizer110->Add( $bSizer113, 0, Wx::EXPAND, 5 );

	$self->{details}->SetSizerAndFit($bSizer110);
	$self->{details}->Layout;

	my $bSizer109 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer109->Add( $self->{list}, 0, Wx::BOTTOM | Wx::EXPAND | Wx::LEFT | Wx::TOP, 5 );
	$bSizer109->Add( $self->{details}, 1, Wx::EXPAND, 0 );

	my $bSizer108 = Wx::BoxSizer->new(Wx::VERTICAL);
	$bSizer108->Add( $bSizer109, 1, Wx::EXPAND, 5 );

	$self->SetSizerAndFit($bSizer108);
	$self->Layout;

	return $self;
}

sub refresh_plugin {
	$_[0]->main->error('Handler method refresh_plugin for event list.OnListBox not implemented');
}

sub action_clicked {
	$_[0]->main->error('Handler method action_clicked for event action.OnButtonClick not implemented');
}

sub preferences_clicked {
	$_[0]->main->error('Handler method preferences_clicked for event preferences.OnButtonClick not implemented');
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

