.class public Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17e65e654ffe8da7L


# instance fields
.field public metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

.field public status:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$StatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
