.class public Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;
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
    name = "Params"
.end annotation


# instance fields
.field public request:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Request;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;->this$0:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
