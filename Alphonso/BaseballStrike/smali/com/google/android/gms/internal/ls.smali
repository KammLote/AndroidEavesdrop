.class public final Lcom/google/android/gms/internal/ls;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/ProviderQueryResult;


# instance fields
.field private zzbXK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ks;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ks;->getAllProviders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->zzbXK:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->zzbXK:Ljava/util/List;

    return-object v0
.end method
