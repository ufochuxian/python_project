.class Lrx/internal/schedulers/k$b;
.super Lrx/internal/schedulers/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/b;)V
    .locals 0
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 270
    invoke-direct {p0}, Lrx/internal/schedulers/k$d;-><init>()V

    .line 271
    iput-object p1, p0, Lrx/internal/schedulers/k$b;->a:Lrx/c/b;

    .line 272
    return-void
.end method


# virtual methods
.method protected a(Lrx/h$a;Lrx/d;)Lrx/m;
    .locals 2
    .param p1, "actualWorker"    # Lrx/h$a;
    .param p2, "actionCompletable"    # Lrx/d;

    .prologue
    .line 276
    new-instance v0, Lrx/internal/schedulers/k$c;

    iget-object v1, p0, Lrx/internal/schedulers/k$b;->a:Lrx/c/b;

    invoke-direct {v0, v1, p2}, Lrx/internal/schedulers/k$c;-><init>(Lrx/c/b;Lrx/d;)V

    invoke-virtual {p1, v0}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
