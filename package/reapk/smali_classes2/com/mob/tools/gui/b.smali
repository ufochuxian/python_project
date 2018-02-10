.class public Lcom/mob/tools/gui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mob/tools/gui/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lcom/mob/tools/gui/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 19
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/mob/tools/gui/b;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    if-nez v2, :cond_1

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lcom/mob/tools/gui/b;->b:I

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 80
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iget-object v2, v2, Lcom/mob/tools/gui/b$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iget-object v1, v1, Lcom/mob/tools/gui/b$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 85
    .local v0, "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :cond_3
    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    if-eqz v2, :cond_0

    .line 86
    iget-object v0, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 87
    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    if-nez v1, :cond_4

    .line 89
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 90
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iput-object v1, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    .line 96
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    .line 97
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iput-object v1, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 98
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iput-object v0, v1, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    .line 99
    iput-object v0, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 100
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_4
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    iput-object v2, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 93
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iput-object v2, v1, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 76
    .end local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    iput-object v0, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 113
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/mob/tools/gui/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 118
    .local v0, "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0}, Lcom/mob/tools/gui/b$a;->a(Lcom/mob/tools/gui/b$a;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_5

    .line 120
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    iput-object v2, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 123
    :cond_2
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    iget-object v2, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iput-object v2, v1, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iget-object v1, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    iput-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 129
    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/b;->b:I

    .line 131
    :cond_5
    iget-object v0, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 24
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v4, p0, Lcom/mob/tools/gui/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_1

    :cond_0
    move v2, v3

    .line 72
    :goto_0
    monitor-exit p0

    return v2

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .local v0, "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/mob/tools/gui/b;->b:I

    iget v4, p0, Lcom/mob/tools/gui/b;->a:I

    if-lt v3, v4, :cond_5

    .line 30
    iget-object v0, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    .line 31
    if-nez v0, :cond_4

    .line 32
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    const-string v4, "size != 0 but tail == null, this must meet any mistake! fix me!!"

    invoke-virtual {v3, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 34
    .local v1, "n1":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    if-nez v1, :cond_2

    .line 35
    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/gui/b;->b:I

    .line 36
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 24
    .end local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    .end local v1    # "n1":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 38
    .restart local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    .restart local v1    # "n1":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput v3, p0, Lcom/mob/tools/gui/b;->b:I

    .line 39
    :goto_2
    iget-object v3, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    if-eqz v3, :cond_3

    .line 40
    iget v3, p0, Lcom/mob/tools/gui/b;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/gui/b;->b:I

    .line 41
    iget-object v1, v1, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    goto :goto_2

    .line 43
    :cond_3
    iput-object v1, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    goto :goto_1

    .line 46
    .end local v1    # "n1":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :cond_4
    iget-object v3, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    iget-object v3, v3, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    iput-object v3, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    .line 47
    iget-object v3, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 48
    iget v3, p0, Lcom/mob/tools/gui/b;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mob/tools/gui/b;->b:I

    goto :goto_1

    .line 52
    :cond_5
    if-nez v0, :cond_6

    .line 53
    new-instance v0, Lcom/mob/tools/gui/b$a;

    .end local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/mob/tools/gui/b$a;-><init>(Lcom/mob/tools/gui/b$1;)V

    .line 55
    .restart local v0    # "n":Lcom/mob/tools/gui/b$a;, "Lcom/mob/tools/gui/b$a<TK;TV;>;"
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/mob/tools/gui/b$a;->a(Lcom/mob/tools/gui/b$a;J)J

    .line 56
    iput-object p1, v0, Lcom/mob/tools/gui/b$a;->a:Ljava/lang/Object;

    .line 57
    iput-object p2, v0, Lcom/mob/tools/gui/b$a;->b:Ljava/lang/Object;

    .line 58
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    .line 59
    iget-object v3, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iput-object v3, v0, Lcom/mob/tools/gui/b$a;->d:Lcom/mob/tools/gui/b$a;

    .line 61
    iget v3, p0, Lcom/mob/tools/gui/b;->b:I

    if-nez v3, :cond_7

    .line 62
    iput-object v0, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    .line 70
    :goto_3
    iput-object v0, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    .line 71
    iget v3, p0, Lcom/mob/tools/gui/b;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/gui/b;->b:I

    goto :goto_0

    .line 63
    :cond_7
    iget-object v3, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    if-eqz v3, :cond_8

    .line 64
    iget-object v3, p0, Lcom/mob/tools/gui/b;->c:Lcom/mob/tools/gui/b$a;

    iput-object v0, v3, Lcom/mob/tools/gui/b$a;->c:Lcom/mob/tools/gui/b$a;

    goto :goto_3

    .line 66
    :cond_8
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    const-string v4, "size != 0 but head == null, this must meet any mistake! fix me!!"

    invoke-virtual {v3, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/String;)I

    .line 67
    iput-object v0, p0, Lcom/mob/tools/gui/b;->d:Lcom/mob/tools/gui/b$a;

    .line 68
    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/gui/b;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public b()I
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/mob/tools/gui/b;, "Lcom/mob/tools/gui/b<TK;TV;>;"
    iget v0, p0, Lcom/mob/tools/gui/b;->b:I

    return v0
.end method
