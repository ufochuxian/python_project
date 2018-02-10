.class Lcom/mob/tools/RxMob$e$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$e;->b()V
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
    .line 234
    .local p0, "this":Lcom/mob/tools/RxMob$e$2;, "Lcom/mob/tools/RxMob$e$2;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$e$2;->a:Lcom/mob/tools/RxMob$e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/mob/tools/RxMob$e$2;, "Lcom/mob/tools/RxMob$e$2;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$e$2;->a:Lcom/mob/tools/RxMob$e;

    invoke-static {v0}, Lcom/mob/tools/RxMob$e;->a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$d;->b()V

    .line 237
    return-void
.end method
