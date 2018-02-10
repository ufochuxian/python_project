.class Ljavax/jmdns/impl/j$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->a(Ljavax/jmdns/NetworkTopologyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/d;

.field final synthetic b:Ljavax/jmdns/NetworkTopologyEvent;

.field final synthetic c:Ljavax/jmdns/impl/j;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/d;Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/j;

    .prologue
    .line 679
    iput-object p1, p0, Ljavax/jmdns/impl/j$6;->c:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$6;->a:Ljavax/jmdns/d;

    iput-object p3, p0, Ljavax/jmdns/impl/j$6;->b:Ljavax/jmdns/NetworkTopologyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Ljavax/jmdns/impl/j$6;->a:Ljavax/jmdns/d;

    iget-object v1, p0, Ljavax/jmdns/impl/j$6;->b:Ljavax/jmdns/NetworkTopologyEvent;

    invoke-interface {v0, v1}, Ljavax/jmdns/d;->a(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 686
    return-void
.end method
