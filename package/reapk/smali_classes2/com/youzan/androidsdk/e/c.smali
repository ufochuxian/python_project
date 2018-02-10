.class public final Lcom/youzan/androidsdk/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.youzan.open.sdk.preferences"

.field private static final b:Ljava/lang/String; = "!@INVALID!@"

.field private static c:Lcom/youzan/androidsdk/e/c;


# instance fields
.field private final d:Landroid/os/Bundle;

.field private e:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method public static a()Lcom/youzan/androidsdk/e/c;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/youzan/androidsdk/e/c;->c:Lcom/youzan/androidsdk/e/c;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/youzan/androidsdk/e/c;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/youzan/androidsdk/e/c;->c:Lcom/youzan/androidsdk/e/c;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/youzan/androidsdk/e/c;

    invoke-direct {v0}, Lcom/youzan/androidsdk/e/c;-><init>()V

    sput-object v0, Lcom/youzan/androidsdk/e/c;->c:Lcom/youzan/androidsdk/e/c;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/youzan/androidsdk/e/c;->c:Lcom/youzan/androidsdk/e/c;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youzan/androidsdk/e/c;->b(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 97
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, "value":I
    if-eq v0, v3, :cond_0

    move v1, v0

    .line 107
    .end local v0    # "value":I
    .local v1, "value":I
    :goto_0
    return v1

    .line 101
    .end local v1    # "value":I
    .restart local v0    # "value":I
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 103
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    move v1, v0

    .line 107
    .end local v0    # "value":I
    .restart local v1    # "value":I
    goto :goto_0

    .line 105
    .end local v1    # "value":I
    .restart local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 124
    iget-object v4, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    .local v0, "value":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    move-wide v2, v0

    .line 134
    .end local v0    # "value":J
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 128
    .end local v2    # "value":J
    .restart local v0    # "value":J
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    iget-object v4, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v4, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_1
    move-wide v2, v0

    .line 134
    .end local v0    # "value":J
    .restart local v2    # "value":J
    goto :goto_0

    .line 132
    .end local v2    # "value":J
    .restart local v0    # "value":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    const-string v3, "!@INVALID!@"

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "value":Ljava/lang/String;
    const-string v2, "!@INVALID!@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 80
    .end local v0    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 74
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 80
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "appCtx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 56
    move-object p1, v0

    .line 58
    :cond_0
    const-string v1, "com.youzan.open.sdk.preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    .line 59
    iget-object v1, p0, Lcom/youzan/androidsdk/e/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    .line 60
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 112
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 139
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/youzan/androidsdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/youzan/androidsdk/e/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
