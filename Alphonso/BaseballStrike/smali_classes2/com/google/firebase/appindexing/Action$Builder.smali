.class public Lcom/google/firebase/appindexing/Action$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final ACTIVATE_ACTION:Ljava/lang/String; = "ActivateAction"

.field public static final ADD_ACTION:Ljava/lang/String; = "AddAction"

.field public static final BOOKMARK_ACTION:Ljava/lang/String; = "BookmarkAction"

.field public static final COMMENT_ACTION:Ljava/lang/String; = "CommentAction"

.field public static final LIKE_ACTION:Ljava/lang/String; = "LikeAction"

.field public static final LISTEN_ACTION:Ljava/lang/String; = "ListenAction"

.field public static final SEND_ACTION:Ljava/lang/String; = "SendAction"

.field public static final SHARE_ACTION:Ljava/lang/String; = "ShareAction"

.field public static final STATUS_TYPE_ACTIVE:Ljava/lang/String; = "http://schema.org/ActiveActionStatus"

.field public static final STATUS_TYPE_COMPLETED:Ljava/lang/String; = "http://schema.org/CompletedActionStatus"

.field public static final STATUS_TYPE_FAILED:Ljava/lang/String; = "http://schema.org/FailedActionStatus"

.field public static final VIEW_ACTION:Ljava/lang/String; = "ViewAction"

.field public static final WATCH_ACTION:Ljava/lang/String; = "WatchAction"


# instance fields
.field private final zzbVs:Ljava/lang/String;

.field private zzbVt:Ljava/lang/String;

.field private zzbVu:Ljava/lang/String;

.field private zzbVv:Ljava/lang/String;

.field private zzbVw:Lcom/google/firebase/appindexing/internal/zzb;

.field private zzbVx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/appindexing/Action;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVt:Ljava/lang/String;

    const-string v1, "setObject is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVu:Ljava/lang/String;

    const-string v1, "setObject is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/appindexing/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVt:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVu:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVv:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVw:Lcom/google/firebase/appindexing/internal/zzb;

    if-nez v5, :cond_0

    new-instance v5, Lcom/google/firebase/appindexing/Action$Metadata$Builder;

    invoke-direct {v5}, Lcom/google/firebase/appindexing/Action$Metadata$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->zzEy()Lcom/google/firebase/appindexing/internal/zzb;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVx:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/appindexing/internal/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/appindexing/internal/zzb;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVw:Lcom/google/firebase/appindexing/internal/zzb;

    goto :goto_0
.end method

.method public setActionStatus(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVx:Ljava/lang/String;

    return-object p0
.end method

.method public setMetadata(Lcom/google/firebase/appindexing/Action$Metadata$Builder;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 1
    .param p1    # Lcom/google/firebase/appindexing/Action$Metadata$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->zzEy()Lcom/google/firebase/appindexing/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVw:Lcom/google/firebase/appindexing/internal/zzb;

    return-object p0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVu:Ljava/lang/String;

    return-object p0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzbVv:Ljava/lang/String;

    return-object p0
.end method
