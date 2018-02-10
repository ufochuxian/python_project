.class Lcom/ut/mini/d/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ut/mini/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/d/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ut/mini/d/e;


# direct methods
.method constructor <init>(Lcom/ut/mini/d/e;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ut/mini/d/e$3;->a:Lcom/ut/mini/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ut/mini/d/c;)V
    .locals 1
    .param p1, "aOriginalPluginContext"    # Lcom/ut/mini/d/c;

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/mtl/log/e/i;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/d/c;->a(Z)V

    .line 121
    return-void
.end method
