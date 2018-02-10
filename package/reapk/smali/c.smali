.class Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/Socket;

.field private final b:Lb;


# direct methods
.method constructor <init>(Lb;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lc;->b:Lb;

    iput-object p2, p0, Lc;->a:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lc;->b:Lb;

    iget-object v1, p0, Lc;->a:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lb;->a(Ljava/net/Socket;)V

    return-void
.end method
