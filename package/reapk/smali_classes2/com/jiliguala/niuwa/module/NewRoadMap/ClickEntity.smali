.class public Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/c/a/a/a/c/c;"
    }
.end annotation


# static fields
.field public static final CLICK_ITEM_CHILD_VIEW:I = 0x2

.field public static final CLICK_ITEM_VIEW:I = 0x1

.field public static final LONG_CLICK_ITEM_CHILD_VIEW:I = 0x4

.field public static final LONG_CLICK_ITEM_VIEW:I = 0x3

.field public static final NEST_CLICK_ITEM_CHILD_VIEW:I = 0x5


# instance fields
.field public Type:I

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 19
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;, "Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;->Type:I

    .line 21
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;, "Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;, "Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity<TT;>;"
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;->Type:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;, "Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ClickEntity;->data:Ljava/lang/Object;

    .line 34
    return-void
.end method
