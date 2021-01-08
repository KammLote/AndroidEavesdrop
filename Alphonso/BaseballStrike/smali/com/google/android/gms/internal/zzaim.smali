.class final Lcom/google/android/gms/internal/zzaim;
.super Lcom/google/android/gms/internal/zzajf;

# interfaces
.implements Lcom/google/android/gms/internal/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzajf",
        "<TT;>;",
        "Lcom/google/android/gms/internal/zzv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaid;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzajf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/internal/zzaie;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaim;-><init>(Lcom/google/android/gms/internal/zzaid;)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V

    return-void
.end method
