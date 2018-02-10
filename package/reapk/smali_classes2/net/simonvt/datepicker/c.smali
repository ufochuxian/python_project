.class public Lnet/simonvt/datepicker/c;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnet/simonvt/datepicker/DatePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/datepicker/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "year"

.field private static final b:Ljava/lang/String; = "month"

.field private static final c:Ljava/lang/String; = "day"


# instance fields
.field private final d:Lnet/simonvt/datepicker/DatePicker;

.field private final e:Lnet/simonvt/datepicker/c$a;

.field private final f:Ljava/util/Calendar;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnet/simonvt/datepicker/c$a;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lnet/simonvt/datepicker/c$a;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/simonvt/datepicker/c;->g:Z

    .line 96
    iput-object p3, p0, Lnet/simonvt/datepicker/c;->e:Lnet/simonvt/datepicker/c$a;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/datepicker/c;->f:Ljava/util/Calendar;

    .line 100
    invoke-virtual {p0}, Lnet/simonvt/datepicker/c;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    sget v4, Lnet/simonvt/datepicker/d$f;->date_time_done:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lnet/simonvt/datepicker/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/simonvt/datepicker/c;->setIcon(I)V

    .line 104
    const-string v3, "layout_inflater"

    .line 105
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lnet/simonvt/datepicker/d$e;->holo_date_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lnet/simonvt/datepicker/c;->setView(Landroid/view/View;)V

    .line 108
    sget v3, Lnet/simonvt/datepicker/d$d;->holoDatePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/datepicker/DatePicker;

    iput-object v3, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    .line 109
    iget-object v3, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lnet/simonvt/datepicker/DatePicker;->a(IIILnet/simonvt/datepicker/DatePicker$a;)V

    .line 110
    invoke-direct {p0, p4, p5, p6}, Lnet/simonvt/datepicker/c;->b(III)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/datepicker/c$a;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lnet/simonvt/datepicker/c$a;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget v2, Lnet/simonvt/datepicker/d$g;->Theme_Dialog_Alert:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/simonvt/datepicker/c;-><init>(Landroid/content/Context;ILnet/simonvt/datepicker/c$a;III)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->e:Lnet/simonvt/datepicker/c$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->clearFocus()V

    .line 146
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->e:Lnet/simonvt/datepicker/c$a;

    iget-object v1, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    .line 147
    invoke-virtual {v3}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v4}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 146
    invoke-interface {v0, v1, v2, v3, v4}, Lnet/simonvt/datepicker/c$a;->a(Lnet/simonvt/datepicker/DatePicker;III)V

    .line 149
    :cond_0
    return-void
.end method

.method private b(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x1

    .line 152
    iget-object v1, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v1}, Lnet/simonvt/datepicker/DatePicker;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lnet/simonvt/datepicker/c;->f:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 154
    iget-object v1, p0, Lnet/simonvt/datepicker/c;->f:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object v1, p0, Lnet/simonvt/datepicker/c;->f:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 156
    invoke-virtual {p0}, Lnet/simonvt/datepicker/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/datepicker/c;->f:Ljava/util/Calendar;

    .line 157
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    .line 156
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/simonvt/datepicker/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iput-boolean v5, p0, Lnet/simonvt/datepicker/c;->g:Z

    .line 171
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v1, p0, Lnet/simonvt/datepicker/c;->g:Z

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/simonvt/datepicker/c;->g:Z

    .line 168
    sget v1, Lnet/simonvt/datepicker/d$f;->date_picker_dialog_title:I

    invoke-virtual {p0, v1}, Lnet/simonvt/datepicker/c;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lnet/simonvt/datepicker/DatePicker;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    return-object v0
.end method

.method public a(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->a(III)V

    .line 141
    return-void
.end method

.method public a(Lnet/simonvt/datepicker/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Lnet/simonvt/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lnet/simonvt/datepicker/DatePicker;->a(IIILnet/simonvt/datepicker/DatePicker$a;)V

    .line 120
    invoke-direct {p0, p2, p3, p4}, Lnet/simonvt/datepicker/c;->b(III)V

    .line 121
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lnet/simonvt/datepicker/c;->b()V

    .line 115
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "day":I
    iget-object v3, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lnet/simonvt/datepicker/DatePicker;->a(IIILnet/simonvt/datepicker/DatePicker$a;)V

    .line 189
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v1, "month"

    iget-object v2, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v1, "day"

    iget-object v2, p0, Lnet/simonvt/datepicker/c;->d:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    return-object v0
.end method
