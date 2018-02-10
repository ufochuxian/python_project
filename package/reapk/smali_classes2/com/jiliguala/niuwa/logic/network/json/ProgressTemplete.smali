.class public Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x197453079c31a7daL


# instance fields
.field public bid:Ljava/lang/String;

.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;",
            ">;"
        }
    .end annotation
.end field

.field public lid:Ljava/lang/String;

.field public subtaskid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->detail:Ljava/util/List;

    return-void
.end method
