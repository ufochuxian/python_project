.class Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Path:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Title:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->MediaType:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
