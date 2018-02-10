.class Lcom/mob/tools/RxMob$e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$e;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/mob/tools/RxMob$e;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$e;

    .prologue
    .line 309
    .local p0, "this":Lcom/mob/tools/RxMob$e$7;, "Lcom/mob/tools/RxMob$e$7;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$e$7;->b:Lcom/mob/tools/RxMob$e;

    iput-object p2, p0, Lcom/mob/tools/RxMob$e$7;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    .local p0, "this":Lcom/mob/tools/RxMob$e$7;, "Lcom/mob/tools/RxMob$e$7;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$7;->b:Lcom/mob/tools/RxMob$e;

    invoke-static {v0}, Lcom/mob/tools/RxMob$e;->a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$e$7;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Throwable;)V

    .line 312
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$7;->b:Lcom/mob/tools/RxMob$e;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 313
    const/4 v0, 0x0

    return v0
.end method
