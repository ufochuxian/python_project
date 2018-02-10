.class public Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public divider:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;

.field public record:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;",
            ">;"
        }
    .end annotation
.end field

.field public share:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

.field public top:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
