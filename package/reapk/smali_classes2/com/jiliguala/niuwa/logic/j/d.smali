.class public Lcom/jiliguala/niuwa/logic/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "newly_install"

.field public static final b:Ljava/lang/String; = "update"

.field private static final c:Ljava/lang/String; = "android_rate_install_date"

.field private static final d:Ljava/lang/String; = "android_rate_install_type"

.field private static final e:Ljava/lang/String; = "android_rate_launch_times"

.field private static final f:Ljava/lang/String; = "android_rate_is_agree_show_dialog"

.field private static final g:Ljava/lang/String; = "android_rate_remind_interval"

.field private static final h:Ljava/lang/String; = "android_rate_event_times"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchTimes"    # I

    .prologue
    .line 130
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_launch_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 133
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_install_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAgree"    # Z

    .prologue
    .line 68
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_is_agree_show_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 155
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventTimes"    # I

    .prologue
    .line 148
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_event_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 151
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_install_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v1, "android_rate_launch_times"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_is_agree_show_dialog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method static e(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_is_agree_show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static f(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_remind_interval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "android_rate_remind_interval"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 95
    return-void
.end method

.method static g(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_remind_interval"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static h(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v0, "newly_install"

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static i(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v0, "update"

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_install_type"

    const-string v2, "newly_install"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_install_date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    return-void
.end method

.method static l(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_install_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static m(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_launch_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static n(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 140
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_install_date"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static o(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_event_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
