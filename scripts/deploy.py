from ape import accounts, project


def main():
    deployer = accounts.load("sk8block-deployer")
    deployer.deploy(project.SK8Token)
