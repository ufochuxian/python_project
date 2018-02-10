.class public Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public characters:Ljava/lang/String;

.field public screentshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public target:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete$Data;->this$0:Lcom/jiliguala/niuwa/logic/network/json/WriteTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
