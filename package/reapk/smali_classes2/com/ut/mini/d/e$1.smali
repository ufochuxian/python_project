.class Lcom/ut/mini/d/e$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ut/mini/d/e;


# direct methods
.method constructor <init>(Lcom/ut/mini/d/e;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ut/mini/d/e$1;->a:Lcom/ut/mini/d/e;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v0, "com.ut.mini.perf.UTPerfPlugin"

    invoke-virtual {p0, v0}, Lcom/ut/mini/d/e$1;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
