.class public Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d4f0f197fac1eeeL


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    .line 68
    iput p2, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    .line 69
    return-void
.end method
