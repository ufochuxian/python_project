.class Ljavax/jmdns/impl/JmDNSImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->a(JLjavax/jmdns/impl/g;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/impl/k$a;

.field final synthetic b:Ljavax/jmdns/ServiceEvent;

.field final synthetic c:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/k$a;Ljavax/jmdns/ServiceEvent;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 1291
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->c:Ljavax/jmdns/impl/JmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->a:Ljavax/jmdns/impl/k$a;

    iput-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->b:Ljavax/jmdns/ServiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->a:Ljavax/jmdns/impl/k$a;

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$4;->b:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/k$a;->a(Ljavax/jmdns/ServiceEvent;)V

    .line 1296
    return-void
.end method
