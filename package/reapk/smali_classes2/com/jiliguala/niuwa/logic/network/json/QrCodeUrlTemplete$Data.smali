.class public Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41cbe344717cd32cL


# instance fields
.field public qr_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete$Data;->this$0:Lcom/jiliguala/niuwa/logic/network/json/QrCodeUrlTemplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
