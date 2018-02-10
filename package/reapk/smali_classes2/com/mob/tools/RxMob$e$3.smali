.class Lcom/mob/tools/RxMob$e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$e;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/mob/tools/RxMob$e;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$e;

    .prologue
    .line 252
    .local p0, "this":Lcom/mob/tools/RxMob$e$3;, "Lcom/mob/tools/RxMob$e$3;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$e$3;->b:Lcom/mob/tools/RxMob$e;

    iput-object p2, p0, Lcom/mob/tools/RxMob$e$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    .local p0, "this":Lcom/mob/tools/RxMob$e$3;, "Lcom/mob/tools/RxMob$e$3;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$3;->b:Lcom/mob/tools/RxMob$e;

    invoke-static {v0}, Lcom/mob/tools/RxMob$e;->a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$e$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x0

    return v0
.end method
