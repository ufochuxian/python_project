.class public final Lcom/chivox/AIEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chivox/AIEngine$aiengine_callback;
    }
.end annotation


# static fields
.field public static AIENGINE_MESSAGE_TYPE_BIN:I

.field public static AIENGINE_MESSAGE_TYPE_JSON:I

.field public static AIENGINE_OPT_GET_MODULES:I

.field public static AIENGINE_OPT_GET_TRAFFIC:I

.field public static AIENGINE_OPT_GET_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7
    :try_start_0
    const-string v1, "aiengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    sput v2, Lcom/chivox/AIEngine;->AIENGINE_MESSAGE_TYPE_JSON:I

    .line 18
    sput v3, Lcom/chivox/AIEngine;->AIENGINE_MESSAGE_TYPE_BIN:I

    .line 20
    sput v2, Lcom/chivox/AIEngine;->AIENGINE_OPT_GET_VERSION:I

    .line 21
    sput v3, Lcom/chivox/AIEngine;->AIENGINE_OPT_GET_MODULES:I

    .line 22
    const/4 v1, 0x3

    sput v1, Lcom/chivox/AIEngine;->AIENGINE_OPT_GET_TRAFFIC:I

    return-void

    .line 8
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 9
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native aiengine_cancel(J)I
.end method

.method public static native aiengine_delete(J)I
.end method

.method public static native aiengine_feed(J[BI)I
.end method

.method public static native aiengine_get_device_id([BLjava/lang/Object;)I
.end method

.method public static native aiengine_log(JLjava/lang/String;)I
.end method

.method public static native aiengine_new(Ljava/lang/String;Ljava/lang/Object;)J
.end method

.method public static native aiengine_opt(JI[BI)I
.end method

.method public static native aiengine_start(JLjava/lang/String;[BLcom/chivox/AIEngine$aiengine_callback;Ljava/lang/Object;)I
.end method

.method public static native aiengine_stop(J)I
.end method
