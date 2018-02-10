.class final Lrx/internal/operators/am$a;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/am$a$c;,
        Lrx/internal/operators/am$a$a;,
        Lrx/internal/operators/am$a$d;,
        Lrx/internal/operators/am$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lrx/f",
        "<TT2;>;>;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a1f0a50492e2277L


# instance fields
.field final a:Lrx/i/d;

.field final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/i/b;

.field d:I

.field e:I

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field final synthetic i:Lrx/internal/operators/am;


# direct methods
.method public constructor <init>(Lrx/internal/operators/am;Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    .local p2, "subscriber":Lrx/l;, "Lrx/l<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/am$a;->i:Lrx/internal/operators/am;

    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/am$a;->f:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lrx/internal/operators/am$a;->b:Lrx/l;

    .line 90
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    .line 91
    new-instance v0, Lrx/i/d;

    iget-object v1, p0, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    invoke-direct {v0, v1}, Lrx/i/d;-><init>(Lrx/m;)V

    iput-object v0, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    .line 92
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrx/f",
            "<TT2;>;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    return-object p0
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    invoke-virtual {p0}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v3, p0, Lrx/internal/operators/am$a;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/f;

    .line 132
    .local v2, "o":Lrx/f;, "Lrx/f<TT2;>;"
    invoke-interface {v2, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    .end local v2    # "o":Lrx/f;, "Lrx/f<TT2;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 134
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/am$a;->b:Lrx/l;

    invoke-virtual {v3, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 135
    iget-object v3, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-virtual {v3}, Lrx/i/d;->unsubscribe()V

    .line 136
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/f",
            "<TT2;>;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/f;

    .line 152
    .local v1, "o":Lrx/f;, "Lrx/f<TT2;>;"
    invoke-interface {v1}, Lrx/f;->onCompleted()V

    goto :goto_0

    .line 154
    .end local v1    # "o":Lrx/f;, "Lrx/f<TT2;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/am$a;->b:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    .line 155
    iget-object v2, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-virtual {v2}, Lrx/i/d;->unsubscribe()V

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lrx/internal/operators/am$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lrx/internal/operators/am$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-virtual {v0}, Lrx/i/d;->unsubscribe()V

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    new-instance v0, Lrx/internal/operators/am$a$b;

    invoke-direct {v0, p0}, Lrx/internal/operators/am$a$b;-><init>(Lrx/internal/operators/am$a;)V

    .line 97
    .local v0, "s1":Lrx/l;, "Lrx/l<TT1;>;"
    new-instance v1, Lrx/internal/operators/am$a$d;

    invoke-direct {v1, p0}, Lrx/internal/operators/am$a$d;-><init>(Lrx/internal/operators/am$a;)V

    .line 99
    .local v1, "s2":Lrx/l;, "Lrx/l<TT2;>;"
    iget-object v2, p0, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    invoke-virtual {v2, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    invoke-virtual {v2, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 102
    iget-object v2, p0, Lrx/internal/operators/am$a;->i:Lrx/internal/operators/am;

    iget-object v2, v2, Lrx/internal/operators/am;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 103
    iget-object v2, p0, Lrx/internal/operators/am$a;->i:Lrx/internal/operators/am;

    iget-object v2, v2, Lrx/internal/operators/am;->b:Lrx/e;

    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 104
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-virtual {v0}, Lrx/i/d;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/am$a;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-virtual {v0}, Lrx/i/d;->unsubscribe()V

    .line 109
    return-void
.end method
