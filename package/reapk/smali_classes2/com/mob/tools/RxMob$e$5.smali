.class Lcom/mob/tools/RxMob$e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/RxMob$e;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$e;

    .prologue
    .line 279
    .local p0, "this":Lcom/mob/tools/RxMob$e$5;, "Lcom/mob/tools/RxMob$e$5;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$e$5;->a:Lcom/mob/tools/RxMob$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 281
    .local p0, "this":Lcom/mob/tools/RxMob$e$5;, "Lcom/mob/tools/RxMob$e$5;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$5;->a:Lcom/mob/tools/RxMob$e;

    invoke-static {v0}, Lcom/mob/tools/RxMob$e;->a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$d;->a()V

    .line 282
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$5;->a:Lcom/mob/tools/RxMob$e;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 283
    const/4 v0, 0x0

    return v0
.end method
