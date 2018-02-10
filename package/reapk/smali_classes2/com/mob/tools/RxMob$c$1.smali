.class Lcom/mob/tools/RxMob$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/RxMob$d;

.field final synthetic b:Lcom/mob/tools/RxMob$c;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$c;

    .prologue
    .line 125
    .local p0, "this":Lcom/mob/tools/RxMob$c$1;, "Lcom/mob/tools/RxMob$c$1;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$c$1;->b:Lcom/mob/tools/RxMob$c;

    iput-object p2, p0, Lcom/mob/tools/RxMob$c$1;->a:Lcom/mob/tools/RxMob$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    .local p0, "this":Lcom/mob/tools/RxMob$c$1;, "Lcom/mob/tools/RxMob$c$1;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$c$1;->b:Lcom/mob/tools/RxMob$c;

    invoke-static {v0}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$a;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/RxMob$e;

    iget-object v2, p0, Lcom/mob/tools/RxMob$c$1;->b:Lcom/mob/tools/RxMob$c;

    iget-object v3, p0, Lcom/mob/tools/RxMob$c$1;->a:Lcom/mob/tools/RxMob$d;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/RxMob$e;-><init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$a;->a(Lcom/mob/tools/RxMob$d;)V

    .line 128
    const/4 v0, 0x0

    return v0
.end method
