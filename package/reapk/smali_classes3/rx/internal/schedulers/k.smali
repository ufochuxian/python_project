.class public Lrx/internal/schedulers/k;
.super Lrx/h;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/k$c;,
        Lrx/internal/schedulers/k$a;,
        Lrx/internal/schedulers/k$b;,
        Lrx/internal/schedulers/k$d;
    }
.end annotation

.annotation build Lrx/b/b;
.end annotation


# static fields
.field static final a:Lrx/m;

.field static final b:Lrx/m;


# instance fields
.field private final c:Lrx/h;

.field private final d:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<",
            "Lrx/e",
            "<",
            "Lrx/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lrx/internal/schedulers/k$3;

    invoke-direct {v0}, Lrx/internal/schedulers/k$3;-><init>()V

    sput-object v0, Lrx/internal/schedulers/k;->a:Lrx/m;

    .line 206
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/k;->b:Lrx/m;

    return-void
.end method

.method public constructor <init>(Lrx/c/p;Lrx/h;)V
    .locals 2
    .param p2, "actualScheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<",
            "Lrx/b;",
            ">;>;",
            "Lrx/b;",
            ">;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "combine":Lrx/c/p;, "Lrx/c/p<Lrx/e<Lrx/e<Lrx/b;>;>;Lrx/b;>;"
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 112
    iput-object p2, p0, Lrx/internal/schedulers/k;->c:Lrx/h;

    .line 114
    invoke-static {}, Lrx/h/c;->K()Lrx/h/c;

    move-result-object v0

    .line 115
    .local v0, "workerSubject":Lrx/h/c;, "Lrx/h/c<Lrx/e<Lrx/b;>;>;"
    new-instance v1, Lrx/e/f;

    invoke-direct {v1, v0}, Lrx/e/f;-><init>(Lrx/f;)V

    iput-object v1, p0, Lrx/internal/schedulers/k;->d:Lrx/f;

    .line 118
    invoke-virtual {v0}, Lrx/h/c;->r()Lrx/e;

    move-result-object v1

    invoke-interface {p1, v1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/b;

    invoke-virtual {v1}, Lrx/b;->h()Lrx/m;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/schedulers/k;->e:Lrx/m;

    .line 119
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 6

    .prologue
    .line 133
    iget-object v5, p0, Lrx/internal/schedulers/k;->c:Lrx/h;

    invoke-virtual {v5}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v3

    .line 136
    .local v3, "actualWorker":Lrx/h$a;
    invoke-static {}, Lrx/internal/operators/g;->K()Lrx/internal/operators/g;

    move-result-object v1

    .line 137
    .local v1, "actionSubject":Lrx/internal/operators/g;, "Lrx/internal/operators/g<Lrx/internal/schedulers/k$d;>;"
    new-instance v0, Lrx/e/f;

    invoke-direct {v0, v1}, Lrx/e/f;-><init>(Lrx/f;)V

    .line 139
    .local v0, "actionObserver":Lrx/f;, "Lrx/f<Lrx/internal/schedulers/k$d;>;"
    new-instance v5, Lrx/internal/schedulers/k$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/schedulers/k$1;-><init>(Lrx/internal/schedulers/k;Lrx/h$a;)V

    invoke-virtual {v1, v5}, Lrx/internal/operators/g;->r(Lrx/c/p;)Lrx/e;

    move-result-object v2

    .line 153
    .local v2, "actions":Lrx/e;, "Lrx/e<Lrx/b;>;"
    new-instance v4, Lrx/internal/schedulers/k$2;

    invoke-direct {v4, p0, v3, v0}, Lrx/internal/schedulers/k$2;-><init>(Lrx/internal/schedulers/k;Lrx/h$a;Lrx/f;)V

    .line 189
    .local v4, "worker":Lrx/h$a;
    iget-object v5, p0, Lrx/internal/schedulers/k;->d:Lrx/f;

    invoke-interface {v5, v2}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 192
    return-object v4
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lrx/internal/schedulers/k;->e:Lrx/m;

    invoke-interface {v0}, Lrx/m;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lrx/internal/schedulers/k;->e:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 124
    return-void
.end method
