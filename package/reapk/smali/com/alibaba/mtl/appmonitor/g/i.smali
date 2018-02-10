.class public Lcom/alibaba/mtl/appmonitor/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/mtl/appmonitor/g/c;

.field private g:Lcom/alibaba/mtl/appmonitor/g/f;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureSet"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p4, "dimensionSet"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .param p5, "isCommitDetail"    # Z

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->e:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/g/i;->f:Lcom/alibaba/mtl/appmonitor/g/c;

    .line 35
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    .line 36
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Lcom/alibaba/mtl/appmonitor/g/i;->d:Z

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/g/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/e;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/g/e;"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p2, :cond_1

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    .line 105
    iget-object v2, v0, Lcom/alibaba/mtl/appmonitor/g/e;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->h:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "isCommitDetailFromConfig"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 190
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    .line 192
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 193
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    .line 196
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)Z
    .locals 7
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p2, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->f:Lcom/alibaba/mtl/appmonitor/g/c;

    if-eqz v0, :cond_7

    .line 70
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->f:Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Lcom/alibaba/mtl/appmonitor/g/d;)Z

    move-result v0

    move v1, v0

    .line 74
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_prefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/g/h;->b()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    if-eqz v4, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/f;->b()Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/g/h;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-direct {p0, v0, v4}, Lcom/alibaba/mtl/appmonitor/g/i;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/g/e;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/g/f;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/g/i;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/g/e;

    move-result-object v2

    .line 83
    :cond_1
    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p2, v0}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/g/e;->a(Lcom/alibaba/mtl/appmonitor/g/g;)Z

    move-result v0

    .line 85
    if-nez v0, :cond_0

    .line 99
    :cond_2
    :goto_1
    return v3

    :cond_3
    move v3, v1

    .line 92
    goto :goto_1

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    if-eqz v0, :cond_6

    .line 97
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-virtual {v0, p2}, Lcom/alibaba/mtl/appmonitor/g/f;->a(Lcom/alibaba/mtl/appmonitor/g/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    move v3, v2

    .line 99
    goto :goto_1

    :cond_5
    move v2, v3

    .line 97
    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->h:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->d:Z

    .line 183
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->f:Lcom/alibaba/mtl/appmonitor/g/c;

    .line 184
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    .line 185
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->h:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-ne p0, p1, :cond_1

    .line 174
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 154
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    check-cast p1, Lcom/alibaba/mtl/appmonitor/g/i;

    .line 159
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 160
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 165
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_6
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 170
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_8
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public f()Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->f:Lcom/alibaba/mtl/appmonitor/g/c;

    return-object v0
.end method

.method public g()Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->g:Lcom/alibaba/mtl/appmonitor/g/f;

    return-object v0
.end method

.method public declared-synchronized h()Z
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_0
    monitor-exit p0

    return v0

    .line 132
    :cond_0
    :try_start_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    .line 142
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 147
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g/i;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
