.class public Lcom/jiliguala/niuwa/logic/network/json/StoryOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x25995cfa19f0f98eL


# instance fields
.field public item:Lcom/jiliguala/niuwa/logic/network/json/Item;

.field public oid:Ljava/lang/String;

.field public receiver:Lcom/jiliguala/niuwa/logic/network/json/Receiver;

.field public shipping:Ljava/lang/String;

.field public sum:Ljava/lang/String;

.field public total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
