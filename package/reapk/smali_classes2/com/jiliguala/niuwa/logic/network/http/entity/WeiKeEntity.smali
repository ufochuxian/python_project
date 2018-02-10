.class public Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x99e22bbbba27d25L


# instance fields
.field public bid:Ljava/lang/String;

.field public courseid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;->courseid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;->bid:Ljava/lang/String;

    .line 18
    return-void
.end method
