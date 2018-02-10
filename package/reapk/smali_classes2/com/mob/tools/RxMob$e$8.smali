.class Lcom/mob/tools/RxMob$e$8;
.super Ljava/lang/Thread;
.source "SourceFile"


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
    .line 318
    .local p0, "this":Lcom/mob/tools/RxMob$e$8;, "Lcom/mob/tools/RxMob$e$8;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$e$8;->b:Lcom/mob/tools/RxMob$e;

    iput-object p2, p0, Lcom/mob/tools/RxMob$e$8;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    .local p0, "this":Lcom/mob/tools/RxMob$e$8;, "Lcom/mob/tools/RxMob$e$8;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$8;->b:Lcom/mob/tools/RxMob$e;

    invoke-static {v0}, Lcom/mob/tools/RxMob$e;->a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$e$8;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Throwable;)V

    .line 321
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$8;->b:Lcom/mob/tools/RxMob$e;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 322
    return-void
.end method
