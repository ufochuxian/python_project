.class Landroid/support/v7/app/j;
.super Landroid/support/v7/app/i;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/j$b;,
        Landroid/support/v7/app/j$a;
    }
.end annotation


# static fields
.field private static final E:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private F:I

.field private G:Z

.field private H:Z

.field private I:Landroid/support/v7/app/j$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/e;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/i;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V

    .line 46
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/j;->F:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/j;->H:Z

    .line 56
    return-void
.end method

.method private A()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Landroid/support/v7/app/j;->F:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/j;->F:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/j;->l()I

    move-result v0

    goto :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/support/v7/app/j$b;

    iget-object v1, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/x;->a(Landroid/content/Context;)Landroid/support/v7/app/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/j$b;-><init>(Landroid/support/v7/app/j;Landroid/support/v7/app/x;)V

    iput-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    .line 236
    :cond_0
    return-void
.end method

.method private C()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    iget-boolean v5, p0, Landroid/support/v7/app/j;->G:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 248
    iget-object v5, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 250
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    .line 251
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 250
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 254
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 262
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 254
    goto :goto_0

    .line 255
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppCompatDelegate"

    const-string v5, "Exception while getting ActivityInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 262
    goto :goto_0
.end method

.method private k(I)Z
    .locals 8
    .param p1, "mode"    # I

    .prologue
    .line 192
    iget-object v7, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 193
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 194
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v7, 0x30

    .line 196
    .local v3, "currentNightMode":I
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    const/16 v5, 0x20

    .line 200
    .local v5, "newNightMode":I
    :goto_0
    if-eq v3, v5, :cond_2

    .line 201
    invoke-direct {p0}, Landroid/support/v7/app/j;->C()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    iget-object v0, p0, Landroid/support/v7/app/j;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 208
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 223
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    const/4 v7, 0x1

    .line 229
    :goto_2
    return v7

    .line 196
    .end local v5    # "newNightMode":I
    :cond_0
    const/16 v5, 0x10

    goto :goto_0

    .line 213
    .restart local v5    # "newNightMode":I
    :cond_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 214
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 217
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v7, v5

    iput v7, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 218
    invoke-virtual {v6, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 221
    invoke-static {v6}, Landroid/support/v7/app/u;->a(Landroid/content/res/Resources;)Z

    goto :goto_1

    .line 229
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 74
    new-instance v0, Landroid/support/v7/app/j$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/j$a;-><init>(Landroid/support/v7/app/j;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, -0x64

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/i;->a(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/j;->F:I

    if-ne v0, v1, :cond_0

    .line 65
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/j;->F:I

    .line 68
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/support/v7/app/j;->H:Z

    .line 80
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v7/app/i;->c()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/app/j;->k()Z

    .line 114
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/support/v7/app/i;->c(Landroid/os/Bundle;)V

    .line 171
    iget v0, p0, Landroid/support/v7/app/j;->F:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 173
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/j;->F:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v7/app/i;->d()V

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    invoke-virtual {v0}, Landroid/support/v7/app/j$b;->d()V

    .line 124
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 143
    const-string v0, "AppCompatDelegate"

    const-string v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget v0, p0, Landroid/support/v7/app/j;->F:I

    if-eq v0, p1, :cond_0

    .line 134
    iput p1, p0, Landroid/support/v7/app/j;->F:I

    .line 135
    iget-boolean v0, p0, Landroid/support/v7/app/j;->G:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/app/j;->k()Z

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method g(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 158
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 152
    .restart local p1    # "mode":I
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/j;->B()V

    .line 153
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    invoke-virtual {v0}, Landroid/support/v7/app/j$b;->a()I

    move-result p1

    goto :goto_0

    .line 156
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public g()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/support/v7/app/i;->g()V

    .line 182
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    invoke-virtual {v0}, Landroid/support/v7/app/j$b;->d()V

    .line 185
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v7/app/j;->H:Z

    return v0
.end method

.method public k()Z
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "applied":Z
    invoke-direct {p0}, Landroid/support/v7/app/j;->A()I

    move-result v2

    .line 92
    .local v2, "nightMode":I
    invoke-virtual {p0, v2}, Landroid/support/v7/app/j;->g(I)I

    move-result v1

    .line 93
    .local v1, "modeToApply":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 94
    invoke-direct {p0, v1}, Landroid/support/v7/app/j;->k(I)Z

    move-result v0

    .line 97
    :cond_0
    if-nez v2, :cond_1

    .line 99
    invoke-direct {p0}, Landroid/support/v7/app/j;->B()V

    .line 100
    iget-object v3, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    invoke-virtual {v3}, Landroid/support/v7/app/j$b;->c()V

    .line 103
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/app/j;->G:Z

    .line 104
    return v0
.end method

.method final u()Landroid/support/v7/app/j$b;
    .locals 1
    .annotation build Landroid/support/annotation/an;
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/support/v7/app/j;->B()V

    .line 241
    iget-object v0, p0, Landroid/support/v7/app/j;->I:Landroid/support/v7/app/j$b;

    return-object v0
.end method
