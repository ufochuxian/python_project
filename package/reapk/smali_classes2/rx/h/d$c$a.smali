.class final Lrx/h/d$c$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/h/d$c$a",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33895503f3b7c21dL


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lrx/h/d$c$a;, "Lrx/h/d$c$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1152
    iput-object p1, p0, Lrx/h/d$c$a;->a:Ljava/lang/Object;

    .line 1153
    iput-wide p2, p0, Lrx/h/d$c$a;->b:J

    .line 1154
    return-void
.end method
