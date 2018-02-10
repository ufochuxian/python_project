.class public Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public overall:I

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

.field public wavetime:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->this$0:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
