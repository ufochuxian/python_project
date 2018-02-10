.class Ljavax/jmdns/impl/JmDNSImpl$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1711
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$6;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$6;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->u()V

    .line 1718
    return-void
.end method
