.class Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:I

.field private final c:Lb;


# direct methods
.method constructor <init>(Lb;Ljava/net/InetAddress;I)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Le;->c:Lb;

    iput-object p2, p0, Le;->a:Ljava/net/InetAddress;

    iput p3, p0, Le;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Le;->c:Lb;

    iget-object v1, p0, Le;->a:Ljava/net/InetAddress;

    iget v2, p0, Le;->b:I

    invoke-virtual {v0, v1, v2}, Lb;->b(Ljava/net/InetAddress;I)V

    return-void
.end method
