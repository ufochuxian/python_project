.class final Lrx/h/g;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/g$b;,
        Lrx/h/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/h/g$a",
        "<TT;>;>;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c184d753c8b010L


# instance fields
.field volatile a:Ljava/lang/Object;

.field b:Z

.field c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/h/g$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/h/g$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/h/g$b",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    sget-object v0, Lrx/h/g$a;->e:Lrx/h/g$a;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/g;->b:Z

    .line 44
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    iput-object v0, p0, Lrx/h/g;->c:Lrx/c/c;

    .line 46
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    iput-object v0, p0, Lrx/h/g;->d:Lrx/c/c;

    .line 48
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    iput-object v0, p0, Lrx/h/g;->e:Lrx/c/c;

    .line 52
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    iget-object v0, p0, Lrx/h/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    iput-object p1, p0, Lrx/h/g;->a:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method a(Lrx/l;Lrx/h/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/h/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    new-instance v0, Lrx/h/g$1;

    invoke-direct {v0, p0, p2}, Lrx/h/g$1;-><init>(Lrx/h/g;Lrx/h/g$b;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 73
    return-void
.end method

.method a(Lrx/h/g$b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/g$b",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    .local p1, "o":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/h/g;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/g$a;

    .line 94
    .local v1, "oldState":Lrx/h/g$a;
    iget-boolean v2, v1, Lrx/h/g$a;->a:Z

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lrx/h/g;->e:Lrx/c/c;

    invoke-interface {v2, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 96
    const/4 v2, 0x0

    .line 101
    :goto_0
    return v2

    .line 98
    :cond_1
    invoke-virtual {v1, p1}, Lrx/h/g$a;->a(Lrx/h/g$b;)Lrx/h/g$a;

    move-result-object v0

    .line 99
    .local v0, "newState":Lrx/h/g$a;
    invoke-virtual {p0, v1, v0}, Lrx/h/g;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lrx/h/g;->d:Lrx/c/c;

    invoke-interface {v2, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 101
    const/4 v2, 0x1

    goto :goto_0
.end method

.method b(Lrx/h/g$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    .local p1, "o":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/h/g;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/g$a;

    .line 112
    .local v1, "oldState":Lrx/h/g$a;
    iget-boolean v2, v1, Lrx/h/g$a;->a:Z

    if-eqz v2, :cond_2

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    invoke-virtual {v1, p1}, Lrx/h/g$a;->b(Lrx/h/g$b;)Lrx/h/g$a;

    move-result-object v0

    .line 116
    .local v0, "newState":Lrx/h/g$a;
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1, v0}, Lrx/h/g;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method b()[Lrx/h/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/h/g$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-virtual {p0}, Lrx/h/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/g$a;

    iget-object v0, v0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    return-object v0
.end method

.method b(Ljava/lang/Object;)[Lrx/h/g$b;
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/h/g$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-virtual {p0, p1}, Lrx/h/g;->a(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lrx/h/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/g$a;

    iget-object v0, v0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    return-object v0
.end method

.method c(Ljava/lang/Object;)[Lrx/h/g$b;
    .locals 2
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/h/g$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    invoke-virtual {p0, p1}, Lrx/h/g;->a(Ljava/lang/Object;)V

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/h/g;->b:Z

    .line 140
    invoke-virtual {p0}, Lrx/h/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/g$a;

    .line 141
    .local v0, "oldState":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    iget-boolean v1, v0, Lrx/h/g$a;->a:Z

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lrx/h/g$a;->c:[Lrx/h/g$b;

    .line 144
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lrx/h/g$a;->d:Lrx/h/g$a;

    invoke-virtual {p0, v1}, Lrx/h/g;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/g$a;

    iget-object v1, v1, Lrx/h/g$a;->b:[Lrx/h/g$b;

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/g;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/h/g;, "Lrx/h/g<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/h/g$b;

    invoke-direct {v0, p1}, Lrx/h/g$b;-><init>(Lrx/l;)V

    .line 57
    .local v0, "bo":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    invoke-virtual {p0, p1, v0}, Lrx/h/g;->a(Lrx/l;Lrx/h/g$b;)V

    .line 58
    iget-object v1, p0, Lrx/h/g;->c:Lrx/c/c;

    invoke-interface {v1, v0}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lrx/h/g;->a(Lrx/h/g$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lrx/h/g;->b(Lrx/h/g$b;)V

    .line 64
    :cond_0
    return-void
.end method
